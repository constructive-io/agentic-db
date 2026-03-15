-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/updated_at/alterations/alt0000002754


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  ADD COLUMN title text;

