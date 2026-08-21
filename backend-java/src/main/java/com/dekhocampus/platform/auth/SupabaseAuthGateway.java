package com.dekhocampus.platform.auth;
import java.util.Map; import org.springframework.beans.factory.annotation.Value; import org.springframework.http.HttpStatus; import org.springframework.stereotype.Service; import org.springframework.web.client.RestClient; import org.springframework.web.client.RestClientResponseException; import org.springframework.web.server.ResponseStatusException;
@Service public class SupabaseAuthGateway {
 private final String url,key; private final RestClient client=RestClient.create();
 public SupabaseAuthGateway(@Value("${app.supabase-url}")String url,@Value("${app.supabase-publishable-key}")String key){this.url=url.replaceAll("/$","");this.key=key;}
 @SuppressWarnings("unchecked") public Map<String,Object> password(String email,String password){configured();try{return client.post().uri(url+"/auth/v1/token?grant_type=password").header("apikey",key).body(Map.of("email",email,"password",password)).retrieve().body(Map.class);}catch(RestClientResponseException e){throw new ResponseStatusException(HttpStatus.UNAUTHORIZED,"Invalid credentials");}}
 private void configured(){if(url.isBlank()||key.isBlank())throw new ResponseStatusException(HttpStatus.SERVICE_UNAVAILABLE,"Authentication migration requires Supabase server configuration");}
}
