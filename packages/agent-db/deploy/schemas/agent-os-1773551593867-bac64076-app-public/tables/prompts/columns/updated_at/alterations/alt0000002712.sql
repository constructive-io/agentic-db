-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/updated_at/alterations/alt0000002712
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
    ALTER COLUMN updated_at SET DEFAULT now();

