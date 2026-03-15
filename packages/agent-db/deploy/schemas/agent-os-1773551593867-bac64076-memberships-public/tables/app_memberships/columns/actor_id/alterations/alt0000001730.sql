-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/actor_id/alterations/alt0000001730
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".app_memberships.actor_id IS 'References the user who holds this membership';

