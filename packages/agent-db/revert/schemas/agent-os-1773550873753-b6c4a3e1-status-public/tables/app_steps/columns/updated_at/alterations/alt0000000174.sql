-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/columns/updated_at/alterations/alt0000000174


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_steps 
  ALTER COLUMN updated_at DROP DEFAULT;


