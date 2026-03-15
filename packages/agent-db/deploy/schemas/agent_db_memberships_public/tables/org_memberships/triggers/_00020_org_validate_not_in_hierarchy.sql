-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/triggers/_00020_org_validate_not_in_hierarchy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/org_membership_validate_not_in_hierarchy_tg


CREATE TRIGGER _00020_org_validate_not_in_hierarchy
BEFORE UPDATE ON agent_db_memberships_public.org_memberships
FOR EACH ROW
EXECUTE PROCEDURE agent_db_memberships_private.org_membership_validate_not_in_hierarchy_tg ( );

