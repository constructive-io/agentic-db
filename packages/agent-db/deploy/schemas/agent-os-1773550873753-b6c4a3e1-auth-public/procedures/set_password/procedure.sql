-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/procedures/set_password/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-public/procedures/check_password/procedure



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".set_password (
  current_password text,
  new_password text
)
  RETURNS boolean
  AS $$
DECLARE
  v_user "agent-os-1773550873753-b6c4a3e1-users-public".users;
  v_user_secret "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets;
  password_exists boolean;
BEGIN
  PERFORM "agent-os-1773550873753-b6c4a3e1-auth-public".check_password(
    new_password
  );
  new_password = trim(new_password);
  SELECT
    u.* INTO v_user
  FROM
    "agent-os-1773550873753-b6c4a3e1-users-public".users AS u
  WHERE
    id = jwt_public.current_user_id ();
  IF (NOT FOUND) THEN
    RETURN FALSE;
  END IF;
  SELECT EXISTS (
    SELECT 1
      FROM "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets
      WHERE owner_id=v_user.id
        AND name='password_hash'
  )
  INTO password_exists;
  IF (password_exists IS TRUE) THEN 
    IF ("agent-os-1773550873753-b6c4a3e1-encrypted".verify(
        v_user.id,
        'password_hash',
        current_password
    ) IS FALSE) THEN 
      RAISE EXCEPTION 'INCORRECT_PASSWORD';
    END IF;
  END IF;
  INSERT INTO "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
    (actor_id, event, success)
  VALUES (
    v_user.id,
    'set_password',
    TRUE
  );
  PERFORM "agent-os-1773550873753-b6c4a3e1-encrypted".set
    (v_user.id, 'password_hash', new_password, 'crypt');
      
  RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-auth-public".set_password TO authenticated;

