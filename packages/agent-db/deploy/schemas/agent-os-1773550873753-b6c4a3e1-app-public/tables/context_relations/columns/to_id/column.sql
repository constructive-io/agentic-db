-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/to_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/to_type/alterations/alt0000001277


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
  ADD COLUMN to_id uuid;

