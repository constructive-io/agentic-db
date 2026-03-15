-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/url/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  DROP COLUMN url RESTRICT;


