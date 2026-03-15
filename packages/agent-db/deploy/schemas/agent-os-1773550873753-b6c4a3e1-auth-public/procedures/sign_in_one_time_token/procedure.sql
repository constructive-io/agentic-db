-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/procedures/sign_in_one_time_token/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".sign_in_one_time_token (
  token text,
  credential_kind text DEFAULT 'bearer',
  OUT id uuid,
  OUT user_id uuid,
  OUT access_token text,
  OUT access_token_expires_at timestamptz,
  OUT is_verified boolean,
  OUT totp_enabled boolean
)
  AS $$
DECLARE
  v_credential_id uuid;
  v_session_id uuid;
  v_user_id uuid;
  v_plaintext_credential text;
  v_expires_at timestamptz;
  v_user_is_verified boolean;
BEGIN
    SELECT c.id, c.session_id, s.user_id, c.expires_at
    FROM "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials c
    JOIN "agent-os-1773550873753-b6c4a3e1-auth-private".sessions s ON s.id = c.session_id
    WHERE c.ot_token = sign_in_one_time_token.token
          AND c.revoked_at IS NULL
          AND s.revoked_at IS NULL
          AND (c.expires_at IS NULL OR c.expires_at > NOW())
          AND (s.expires_at IS NULL OR s.expires_at > NOW())
          AND 
            (
                CASE WHEN s.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL
                ELSE s.uagent = jwt_public.current_user_agent() END
            )
          AND 
            (
                CASE WHEN s.origin IS NULL THEN jwt_public.current_origin() IS NULL
                ELSE s.origin = jwt_public.current_origin() END
            )
    INTO v_credential_id, v_session_id, v_user_id, v_expires_at;
    IF (NOT FOUND) THEN 
        RETURN;
    END IF;
    v_plaintext_credential := encode(gen_random_bytes(48), 'hex');
    UPDATE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials c
    SET 
      id = uuid_generate_v5(uuid_ns_url(), v_plaintext_credential),
      ot_token = NULL,
      secret_hash = digest(v_plaintext_credential, 'sha256'),
      kind = credential_kind
    WHERE c.id = v_credential_id
    RETURNING c.id INTO v_credential_id;
    SELECT mem.is_verified
    FROM "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships AS mem
    WHERE mem.actor_id = v_user_id
    INTO v_user_is_verified;
    id := v_credential_id;
    user_id := v_user_id;
    access_token := v_plaintext_credential;
    access_token_expires_at := v_expires_at;
    is_verified := COALESCE(v_user_is_verified, false);
    totp_enabled := false;
    RETURN;
END;
$$
LANGUAGE 'plpgsql'
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".sign_in_one_time_token TO anonymous;

