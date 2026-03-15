-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_memberships_delete_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_delete_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
BEGIN
    DELETE FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
        WHERE actor_id = OLD.actor_id;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

