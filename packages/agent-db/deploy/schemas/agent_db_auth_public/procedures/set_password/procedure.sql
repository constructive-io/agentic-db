-- Deploy: schemas/agent_db_auth_public/procedures/set_password/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_auth_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_auth_public/procedures/check_password/procedure



CREATE FUNCTION agent_db_auth_public.set_password (
  current_password text,
  new_password text
)
  RETURNS boolean
  AS $$
DECLARE
  v_user agent_db_users_public.users;
  v_user_secret agent_db_simple_secrets.secrets;
  password_exists boolean;
BEGIN
  PERFORM agent_db_auth_public.check_password(
    new_password
  );
  new_password = trim(new_password);
  SELECT
    u.* INTO v_user
  FROM
    agent_db_users_public.users AS u
  WHERE
    id = jwt_public.current_user_id ();
  IF (NOT FOUND) THEN
    RETURN FALSE;
  END IF;
  SELECT EXISTS (
    SELECT 1
      FROM agent_db_encrypted.encrypted_secrets
      WHERE owner_id=v_user.id
        AND name='password_hash'
  )
  INTO password_exists;
  IF (password_exists IS TRUE) THEN 
    IF (agent_db_encrypted.verify(
        v_user.id,
        'password_hash',
        current_password
    ) IS FALSE) THEN 
      RAISE EXCEPTION 'INCORRECT_PASSWORD';
    END IF;
  END IF;
  INSERT INTO agent_db_logging_public.audit_logs 
    (actor_id, event, success)
  VALUES (
    v_user.id,
    'set_password',
    TRUE
  );
  PERFORM agent_db_encrypted.set
    (v_user.id, 'password_hash', new_password, 'crypt');
      
  RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agent_db_auth_public.set_password TO authenticated;

