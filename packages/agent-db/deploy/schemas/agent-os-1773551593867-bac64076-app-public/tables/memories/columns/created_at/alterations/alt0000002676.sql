-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/created_at/alterations/alt0000002676
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/created_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
    ALTER COLUMN created_at SET DEFAULT now();

