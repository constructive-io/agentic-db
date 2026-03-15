-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/entity_id/alterations/alt0000002891
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/strength/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN entity_id SET NOT NULL;

