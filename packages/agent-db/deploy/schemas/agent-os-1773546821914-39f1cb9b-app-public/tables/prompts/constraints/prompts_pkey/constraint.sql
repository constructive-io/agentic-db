-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/constraints/prompts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ADD CONSTRAINT prompts_pkey PRIMARY KEY (id);

