-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/related_entity_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ADD COLUMN embedding_text text;

