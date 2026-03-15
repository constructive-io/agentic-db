-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/updated_at/alterations/alt0000003089


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN content text;

