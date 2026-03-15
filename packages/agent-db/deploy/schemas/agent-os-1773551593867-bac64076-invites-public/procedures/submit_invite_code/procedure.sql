-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/procedures/submit_invite_code/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/procedures/app_memberships_perm_check/procedure



CREATE FUNCTION "agent-os-1773551593867-bac64076-invites-public".submit_invite_code (
  token text
)
  RETURNS boolean
  AS $$
DECLARE
  v_user "agent-os-1773551593867-bac64076-users-public".users;
  v_email "agent-os-1773551593867-bac64076-user-identifiers-public".emails;
  v_invite "agent-os-1773551593867-bac64076-invites-public".invites;
BEGIN
  SELECT * FROM "agent-os-1773551593867-bac64076-users-public".users
  WHERE id = jwt_public.current_user_id ()
  INTO v_user;
  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'OBJECT_NOT_FOUND';
  END IF;
  
  SELECT * FROM "agent-os-1773551593867-bac64076-invites-public".invites i
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
    SELECT * FROM "agent-os-1773551593867-bac64076-user-identifiers-public".emails e
    WHERE e.email = v_invite.email
      AND e.owner_id = v_user.id
    INTO v_email;
    
    IF (NOT FOUND) THEN
      RAISE EXCEPTION 'INVITE_EMAIL_NOT_FOUND';
    END IF;
  END IF;
  IF (v_email.email IS NOT NULL OR v_invite.multiple IS FALSE) THEN 
    UPDATE "agent-os-1773551593867-bac64076-invites-public".invites 
    SET invite_valid = FALSE
    WHERE id = v_invite.id;
  END IF;
  UPDATE "agent-os-1773551593867-bac64076-invites-public".invites 
    SET invite_count = invite_count + 1
  WHERE id = v_invite.id;
  INSERT INTO "agent-os-1773551593867-bac64076-invites-public".claimed_invites 
    (sender_id, receiver_id, data)
  VALUES (v_invite.sender_id, v_user.id, v_invite.data);
  IF (
    "agent-os-1773551593867-bac64076-memberships-private".app_memberships_perm_check(
        'send_approved_invites',
        v_invite.sender_id
    ) IS TRUE
   ) THEN
    INSERT INTO "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
      (is_approved, actor_id)
    VALUES (TRUE, v_user.id)
    ON CONFLICT (actor_id)
    DO UPDATE
      SET is_approved = EXCLUDED.is_approved;
  ELSE 
    INSERT INTO "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
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
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-invites-public".submit_invite_code TO authenticated;

