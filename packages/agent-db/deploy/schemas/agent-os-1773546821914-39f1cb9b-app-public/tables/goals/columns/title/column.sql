-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/updated_at/alterations/alt0000001092


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ADD COLUMN title text;

