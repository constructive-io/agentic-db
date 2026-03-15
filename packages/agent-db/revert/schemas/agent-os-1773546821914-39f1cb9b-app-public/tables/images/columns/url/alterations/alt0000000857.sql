-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/url/alterations/alt0000000857


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN url DROP NOT NULL;


