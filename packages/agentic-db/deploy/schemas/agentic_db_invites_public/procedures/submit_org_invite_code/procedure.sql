-- Deploy: schemas/agentic_db_invites_public/procedures/submit_org_invite_code/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_invites_public.submit_org_invite_code(
  IN token text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_user agentic_db_users_public.users;
  v_email agentic_db_user_identifiers_public.emails;
  v_invite agentic_db_invites_public.org_invites;
BEGIN
  SELECT *
  FROM agentic_db_users_public.users
  WHERE
    id = jwt_public.current_user_id() INTO v_user;
  IF NOT (FOUND) THEN
    RAISE EXCEPTION 'OBJECT_NOT_FOUND';
  END IF;
  SELECT *
  FROM agentic_db_invites_public.org_invites AS i
  WHERE
    (i.invite_token = submit_org_invite_code.token AND EXTRACT(EPOCH FROM i.expires_at - now()) > 0) AND i.invite_valid = true INTO v_invite;
  IF NOT (FOUND) THEN
    RAISE EXCEPTION 'INVITE_NOT_FOUND';
  END IF;
  IF v_invite.invite_limit > 0 AND v_invite.invite_count >= v_invite.invite_limit THEN
    RAISE EXCEPTION 'INVITE_LIMIT';
  END IF;
  IF v_invite.email IS NOT NULL THEN
    SELECT *
    FROM agentic_db_user_identifiers_public.emails AS e
    WHERE
      e.email = v_invite.email AND e.owner_id = v_user.id INTO v_email;
    IF NOT (FOUND) THEN
      RAISE EXCEPTION 'INVITE_EMAIL_NOT_FOUND';
    END IF;
  END IF;
  IF v_invite.receiver_id IS NOT NULL THEN
    IF v_invite.receiver_id <> v_user.id THEN
      RAISE EXCEPTION 'INVITE_EMAIL_NOT_FOUND';
    END IF;
  END IF;
  IF v_email.email IS NOT NULL OR v_invite.multiple = false THEN
    UPDATE agentic_db_invites_public.org_invites SET
    invite_valid = false
    WHERE
      id = v_invite.id;
  END IF;
  UPDATE agentic_db_invites_public.org_invites SET
  invite_count = invite_count + 1
  WHERE
    id = v_invite.id;
  INSERT INTO agentic_db_invites_public.org_claimed_invites (
    sender_id,
    receiver_id,
    data,
    entity_id
  )
  VALUES
    (v_invite.sender_id, v_user.id, v_invite.data, v_invite.entity_id);
  IF agentic_db_memberships_private.org_memberships_perm_check('send_approved_invites', v_invite.entity_id, v_invite.sender_id) IS TRUE THEN
    INSERT INTO agentic_db_memberships_public.org_memberships (
      is_approved,
      entity_id,
      actor_id
    )
    VALUES
      (true, v_invite.entity_id, v_user.id)
    ON CONFLICT (entity_id, actor_id) DO UPDATE SET
    is_approved = EXCLUDED.is_approved;
  ELSE
    INSERT INTO agentic_db_memberships_public.org_memberships (
      is_approved,
      entity_id,
      actor_id
    )
    VALUES
      (false, v_invite.entity_id, v_user.id)
    ON CONFLICT DO NOTHING;
  END IF;
  RETURN true;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

