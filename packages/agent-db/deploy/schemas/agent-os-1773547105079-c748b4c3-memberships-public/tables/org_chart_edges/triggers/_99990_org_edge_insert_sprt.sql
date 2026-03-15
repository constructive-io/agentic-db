-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/triggers/_99990_org_edge_insert_sprt
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_org_chart_edge_insert_tg


CREATE TRIGGER _99990_org_edge_insert_sprt
AFTER INSERT ON "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-memberships-private".org_org_chart_edge_insert_tg ( );

