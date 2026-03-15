-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/org_memberships_dtg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_dtg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (
        SELECT count(*) = 0 FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
        WHERE is_owner = TRUE
        AND entity_id = OLD.entity_id
        AND actor_id <> OLD.actor_id
    ) THEN 
        IF (
            SELECT count(*) > 0 FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
            WHERE entity_id = OLD.entity_id
            AND actor_id <> OLD.actor_id
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

