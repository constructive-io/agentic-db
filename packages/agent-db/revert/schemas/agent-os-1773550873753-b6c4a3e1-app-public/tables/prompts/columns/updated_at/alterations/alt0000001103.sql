-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/updated_at/alterations/alt0000001103




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
    ALTER COLUMN updated_at DROP DEFAULT;



