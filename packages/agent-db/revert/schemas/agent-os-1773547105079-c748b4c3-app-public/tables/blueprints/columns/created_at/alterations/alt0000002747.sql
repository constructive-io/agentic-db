-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/created_at/alterations/alt0000002747


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


