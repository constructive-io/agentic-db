-- Deploy: schemas/agentic_db_auth_public/procedures/sign_in_one_time_token/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE FUNCTION agentic_db_auth_public.sign_in_one_time_token(
  IN token text,
  IN credential_kind text DEFAULT 'bearer',
  OUT id uuid,
  OUT user_id uuid,
  OUT access_token text,
  OUT access_token_expires_at timestamptz,
  OUT is_verified boolean,
  OUT totp_enabled boolean
) AS $_PGFN_$
DECLARE
  v_credential_id uuid;
  v_session_id uuid;
  v_user_id uuid;
  v_plaintext_credential text;
  v_expires_at timestamptz;
  v_user_is_verified boolean := false;
BEGIN
  SELECT
    c.id,
    c.session_id,
    s.user_id,
    c.expires_at
  FROM agentic_db_auth_private.session_credentials AS c INNER JOIN agentic_db_auth_private.sessions AS s ON s.id = c.session_id
  WHERE
    ((((c.ot_token = sign_in_one_time_token.token AND c.revoked_at IS NULL) AND s.revoked_at IS NULL) AND (c.expires_at IS NULL OR c.expires_at > now())) AND CASE s.uagent IS NULL 
        WHEN true THEN jwt_public.current_user_agent() IS NULL 
        ELSE s.uagent = jwt_public.current_user_agent() 
      END) AND CASE s.origin IS NULL 
        WHEN true THEN jwt_public.current_origin() IS NULL 
        ELSE s.origin = jwt_public.current_origin() 
      END INTO v_credential_id, v_session_id, v_user_id, v_expires_at;
  IF NOT (FOUND) THEN
    RETURN;
  END IF;
  SELECT encode(gen_random_bytes(48), 'hex') INTO v_plaintext_credential;
  UPDATE agentic_db_auth_private.session_credentials AS c SET
  id = uuid_generate_v5(uuid_ns_url(), v_plaintext_credential), ot_token = NULL, secret_hash = digest(v_plaintext_credential, 'sha256'), kind = sign_in_one_time_token.credential_kind
  WHERE
    c.id = v_credential_id
  RETURNING c.id INTO v_credential_id;
  SELECT mem.is_verified
  FROM agentic_db_memberships_public.app_memberships AS mem
  WHERE
    mem.actor_id = v_user_id INTO v_user_is_verified;
  SELECT v_credential_id INTO id;
  SELECT v_user_id INTO user_id;
  SELECT v_plaintext_credential INTO access_token;
  SELECT v_expires_at INTO access_token_expires_at;
  SELECT
    COALESCE(v_user_is_verified, false) INTO is_verified;
  SELECT false INTO totp_enabled;
  RETURN;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

