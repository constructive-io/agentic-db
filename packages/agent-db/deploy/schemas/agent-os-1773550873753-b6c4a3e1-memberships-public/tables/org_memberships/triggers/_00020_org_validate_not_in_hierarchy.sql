-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/triggers/_00020_org_validate_not_in_hierarchy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/org_membership_validate_not_in_hierarchy_tg


CREATE TRIGGER _00020_org_validate_not_in_hierarchy
BEFORE UPDATE ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_membership_validate_not_in_hierarchy_tg ( );

