-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/created_at/alterations/alt0000000173
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_steps 
  ALTER COLUMN created_at SET DEFAULT now();

