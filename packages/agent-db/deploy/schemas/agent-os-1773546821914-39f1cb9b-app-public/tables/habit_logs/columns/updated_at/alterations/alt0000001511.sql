-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000001511
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
    ALTER COLUMN updated_at SET DEFAULT now();

