-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/triggers/_00015_org_validate_active_member_update
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/org_org_chart_validate_active_member_tg


CREATE TRIGGER _00015_org_validate_active_member_update
BEFORE UPDATE ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".org_org_chart_validate_active_member_tg ( );

