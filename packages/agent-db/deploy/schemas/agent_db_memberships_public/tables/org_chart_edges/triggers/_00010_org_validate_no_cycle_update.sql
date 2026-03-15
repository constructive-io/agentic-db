-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/triggers/_00010_org_validate_no_cycle_update
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_org_chart_validate_no_cycle_tg


CREATE TRIGGER _00010_org_validate_no_cycle_update
BEFORE UPDATE ON agent_db_memberships_public.org_chart_edges
FOR EACH ROW
WHEN (OLD.parent_id IS DISTINCT FROM NEW.parent_id)
EXECUTE PROCEDURE agent_db_memberships_private.org_org_chart_validate_no_cycle_tg ( );

