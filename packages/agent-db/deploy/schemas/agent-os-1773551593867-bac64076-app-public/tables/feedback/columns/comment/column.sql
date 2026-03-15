-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/comment/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/rating/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ADD COLUMN comment text;

