-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/from_type/alterations/alt0000002884
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/from_type/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/updated_at/alterations/alt0000002883


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ALTER COLUMN from_type SET NOT NULL;

