-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/from_id/alterations/alt0000001276
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/from_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/from_type/alterations/alt0000001275


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
  ALTER COLUMN from_id SET NOT NULL;

