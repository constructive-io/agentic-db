-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/created_at/alterations/alt0000003014
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/created_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
    ALTER COLUMN created_at SET DEFAULT now();

