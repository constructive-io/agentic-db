-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/entity_id/alterations/alt0000000931


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  ALTER COLUMN entity_id DROP NOT NULL;


