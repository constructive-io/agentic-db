-- Deploy: schemas/agentic_db_invites_public/procedures/submit_invite_code/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_private/procedures/app_memberships_perm_check/procedure



CREATE FUNCTION agentic_db_invites_public.submit_invite_code (
  token text
)
  RETURNS boolean
  AS $$
DECLARE
  v_user agentic_db_users_public.users;
  v_email agentic_db_user_identifiers_public.emails;
  v_invite agentic_db_invites_public.invites;
BEGIN
  SELECT * FROM agentic_db_users_public.users
  WHERE id = jwt_public.current_user_id ()
  INTO v_user;
  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'OBJECT_NOT_FOUND';
  END IF;
  
  SELECT * FROM agentic_db_invites_public.invites i
    WHERE i.invite_token = token
    AND EXTRACT(EPOCH FROM (i.expires_at - NOW())) > 0
    AND i.invite_valid = TRUE
  INTO v_invite;
  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'INVITE_NOT_FOUND';
  END IF;
  IF (v_invite.invite_limit > 0 AND v_invite.invite_count >= v_invite.invite_limit) THEN
    RAISE EXCEPTION 'INVITE_LIMIT';
  END IF;
  IF (v_invite.email IS NOT NULL) THEN 
    SELECT * FROM agentic_db_user_identifiers_public.emails e
    WHERE e.email = v_invite.email
      AND e.owner_id = v_user.id
    INTO v_email;
    
    IF (NOT FOUND) THEN
      RAISE EXCEPTION 'INVITE_EMAIL_NOT_FOUND';
    END IF;
  END IF;
  IF (v_email.email IS NOT NULL OR v_invite.multiple IS FALSE) THEN 
    UPDATE agentic_db_invites_public.invites 
    SET invite_valid = FALSE
    WHERE id = v_invite.id;
  END IF;
  UPDATE agentic_db_invites_public.invites 
    SET invite_count = invite_count + 1
  WHERE id = v_invite.id;
  INSERT INTO agentic_db_invites_public.claimed_invites 
    (sender_id, receiver_id, data)
  VALUES (v_invite.sender_id, v_user.id, v_invite.data);
  IF (
    agentic_db_memberships_private.app_memberships_perm_check(
        'send_approved_invites',
        v_invite.sender_id
    ) IS TRUE
   ) THEN
    INSERT INTO agentic_db_memberships_public.app_memberships 
      (is_approved, actor_id)
    VALUES (TRUE, v_user.id)
    ON CONFLICT (actor_id)
    DO UPDATE
      SET is_approved = EXCLUDED.is_approved;
  ELSE 
    INSERT INTO agentic_db_memberships_public.app_memberships 
      (is_approved, actor_id)
    VALUES (FALSE, v_user.id)
    ON CONFLICT (actor_id)
    DO NOTHING;
  END IF;
  RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agentic_db_invites_public.submit_invite_code TO authenticated;

