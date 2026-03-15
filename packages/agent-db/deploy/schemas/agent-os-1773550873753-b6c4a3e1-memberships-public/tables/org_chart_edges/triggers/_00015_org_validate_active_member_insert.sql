-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/triggers/_00015_org_validate_active_member_insert
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/org_org_chart_validate_active_member_tg


CREATE TRIGGER _00015_org_validate_active_member_insert
BEFORE INSERT ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_org_chart_validate_active_member_tg ( );

