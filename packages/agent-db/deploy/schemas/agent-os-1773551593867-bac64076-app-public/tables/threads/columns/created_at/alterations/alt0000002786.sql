-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/created_at/alterations/alt0000002786
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/created_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
    ALTER COLUMN created_at SET DEFAULT now();

