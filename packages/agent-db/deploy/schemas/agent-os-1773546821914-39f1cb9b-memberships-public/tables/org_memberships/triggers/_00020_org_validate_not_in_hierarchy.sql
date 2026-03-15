-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/triggers/_00020_org_validate_not_in_hierarchy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/trigger_fns/org_membership_validate_not_in_hierarchy_tg


CREATE TRIGGER _00020_org_validate_not_in_hierarchy
BEFORE UPDATE ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-memberships-private".org_membership_validate_not_in_hierarchy_tg ( );

