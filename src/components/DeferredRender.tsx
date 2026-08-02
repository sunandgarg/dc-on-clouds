import { type ReactNode, useEffect, useRef, useState } from "react";

export function DeferredRender({ children, minHeight = 600 }: { children: ReactNode; minHeight?: number }) {
  const marker = useRef<HTMLDivElement>(null);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    if (ready) return;
    const element = marker.current;
    let idleHandle: number | undefined;
    let timer = 0;
    const reveal = () => setReady(true);
    const win = window as typeof window & {
      requestIdleCallback?: (callback: () => void, options?: { timeout: number }) => number;
      cancelIdleCallback?: (handle: number) => void;
    };
    if (win.requestIdleCallback) idleHandle = win.requestIdleCallback(reveal, { timeout: 1800 });
    else timer = window.setTimeout(reveal, 1000);

    if (!element || !("IntersectionObserver" in window)) {
      return () => {
        if (idleHandle !== undefined) win.cancelIdleCallback?.(idleHandle);
        if (timer) window.clearTimeout(timer);
      };
    }
    const observer = new IntersectionObserver(([entry]) => {
      if (entry.isIntersecting) {
        reveal();
        observer.disconnect();
      }
    }, { rootMargin: "600px 0px" });
    observer.observe(element);
    return () => {
      observer.disconnect();
      if (idleHandle !== undefined) win.cancelIdleCallback?.(idleHandle);
      if (timer) window.clearTimeout(timer);
    };
  }, [ready]);

  return <div ref={marker} style={!ready ? { minHeight } : undefined}>{ready ? children : null}</div>;
}
