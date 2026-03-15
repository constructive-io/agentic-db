-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/app_memberships_delete_sprt_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/app_memberships_sprt/table



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_delete_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
BEGIN
    DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt 
        WHERE actor_id = OLD.actor_id;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

