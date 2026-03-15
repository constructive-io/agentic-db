-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ADD COLUMN description text;

