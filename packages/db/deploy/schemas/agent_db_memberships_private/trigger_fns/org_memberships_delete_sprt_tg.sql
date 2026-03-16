-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_memberships_delete_sprt_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table



CREATE FUNCTION "agent_db_memberships_private".org_memberships_delete_sprt_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
BEGIN
  
    DELETE FROM "agent_db_memberships_private".org_memberships_sprt 
    WHERE actor_id = OLD.actor_id
        AND entity_id = OLD.entity_id;
    DELETE FROM "agent_db_memberships_public".org_members 
    WHERE actor_id = OLD.actor_id
        AND entity_id = OLD.entity_id;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

