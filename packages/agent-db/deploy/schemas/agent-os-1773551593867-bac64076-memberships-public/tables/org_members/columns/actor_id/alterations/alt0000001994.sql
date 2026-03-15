-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000001994
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_members.actor_id IS 'References the user who is a member';

