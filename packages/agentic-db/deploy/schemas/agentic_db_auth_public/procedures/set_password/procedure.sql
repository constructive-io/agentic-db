-- Deploy: schemas/agentic_db_auth_public/procedures/set_password/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_auth_public/schema


CREATE FUNCTION agentic_db_auth_public.set_password(
  IN current_password text,
  IN new_password text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_user agentic_db_users_public.users;
  v_user_secret agentic_db_simple_secrets.secrets;
  password_exists boolean;
BEGIN
  PERFORM agentic_db_auth_public.check_password(set_password.new_password);
  SELECT trim(set_password.new_password) INTO new_password;
  SELECT *
  FROM agentic_db_users_public.users AS u
  WHERE
    id = jwt_public.current_user_id() INTO v_user;
  IF NOT (FOUND) THEN
    RETURN false;
  END IF;
  SELECT
    EXISTS (SELECT 1
    FROM agentic_db_encrypted.encrypted_secrets
    WHERE
      owner_id = v_user.id AND name = 'password_hash') INTO password_exists;
  IF password_exists IS TRUE THEN
    IF agentic_db_encrypted.verify(v_user.id, 'password_hash', set_password.current_password) = false THEN
      RAISE EXCEPTION 'INCORRECT_PASSWORD';
    END IF;
  END IF;
  INSERT INTO agentic_db_logging_public.audit_logs (
    actor_id,
    event,
    success
  )
  VALUES
    (v_user.id, 'set_password', true);
  PERFORM agentic_db_encrypted.set(v_user.id, 'password_hash', set_password.new_password, 'crypt');
  RETURN true;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

