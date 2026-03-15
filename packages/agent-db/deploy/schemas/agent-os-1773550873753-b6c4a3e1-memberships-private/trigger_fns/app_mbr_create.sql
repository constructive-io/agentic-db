-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_mbr_create
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".app_mbr_create ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    INSERT INTO
    "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships
      (actor_id)
    VALUES
      (NEW.id);
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

