-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/from_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
  DROP COLUMN from_id RESTRICT;


