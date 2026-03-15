-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/required_count/alterations/alt0000000209
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_level_requirements/columns/required_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_level_requirements 
    ALTER COLUMN required_count SET DEFAULT 1;

