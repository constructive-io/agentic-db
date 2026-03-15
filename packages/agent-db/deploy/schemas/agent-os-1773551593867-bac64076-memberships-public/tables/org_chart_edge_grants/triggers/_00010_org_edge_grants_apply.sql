-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/triggers/_00010_org_edge_grants_apply
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/trigger_fns/org_org_chart_edge_grants_apply_tg


CREATE TRIGGER _00010_org_edge_grants_apply
AFTER INSERT ON "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-memberships-private".org_org_chart_edge_grants_apply_tg ( );

