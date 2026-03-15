-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/triggers/_99990_org_edge_update_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/org_org_chart_edge_update_tg


CREATE TRIGGER _99990_org_edge_update_sprt
AFTER UPDATE ON "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".org_org_chart_edge_update_tg ( );

