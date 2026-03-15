-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/created_at/alterations/alt0000001271


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
  ALTER COLUMN created_at DROP NOT NULL;


