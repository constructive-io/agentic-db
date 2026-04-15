-- Deploy: schemas/agentic_db_invites_private/trigger_fns/org_invites_insert_before_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_private/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_invites_private.org_invites_insert_before_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  owner_id uuid;
  membership_exists boolean;
BEGIN
  IF NEW.email IS NOT NULL THEN
    SELECT e.owner_id
    FROM agentic_db_user_identifiers_public.emails AS e
    WHERE
      e.email = NEW.email INTO owner_id;
    IF FOUND THEN
      SELECT owner_id INTO NEW.receiver_id;
      SELECT
        EXISTS (SELECT 1
        FROM agentic_db_memberships_public.org_memberships AS m
        WHERE
          m.actor_id = NEW.receiver_id AND m.entity_id = NEW.entity_id) INTO membership_exists;
      IF membership_exists IS TRUE THEN
        RAISE EXCEPTION 'ACCOUNT_EXISTS';
      END IF;
    END IF;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

