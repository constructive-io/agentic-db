-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000002861
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
    ALTER COLUMN updated_at SET DEFAULT now();

