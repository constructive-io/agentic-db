-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/triggers/_00010_org_validate_no_cycle_insert
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/trigger_fns/org_org_chart_validate_no_cycle_tg


CREATE TRIGGER _00010_org_validate_no_cycle_insert
BEFORE INSERT ON "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-memberships-private".org_org_chart_validate_no_cycle_tg ( );

