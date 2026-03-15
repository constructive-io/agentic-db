-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/updated_at/alterations/alt0000002839
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ALTER COLUMN updated_at SET NOT NULL;

