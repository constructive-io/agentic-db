-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_owner_grants_apply_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".app_owner_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
            SET is_owner = TRUE
        WHERE actor_id = NEW.actor_id; 
    ELSE 
        UPDATE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
            SET is_owner = FALSE
        WHERE actor_id = NEW.actor_id; 
        IF (
            SELECT count(*) < 1 FROM "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships
            WHERE is_owner = TRUE
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

