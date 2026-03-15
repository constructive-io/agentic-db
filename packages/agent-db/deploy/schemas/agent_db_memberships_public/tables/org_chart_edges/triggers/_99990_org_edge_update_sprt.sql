-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/triggers/_99990_org_edge_update_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_org_chart_edge_update_tg


CREATE TRIGGER _99990_org_edge_update_sprt
AFTER UPDATE ON "agent_db_memberships_public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_memberships_private".org_org_chart_edge_update_tg ( );

