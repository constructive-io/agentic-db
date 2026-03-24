-- Deploy: schemas/agentic_db_status_public/procedures/steps_required/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table



CREATE FUNCTION agentic_db_status_public.steps_required (
    vlevel text,
    vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS SETOF agentic_db_status_public.app_level_requirements
AS $CODEZ$
BEGIN
  RETURN QUERY
  SELECT 
      app_level_requirements.id,
      app_level_requirements.name,
      app_level_requirements.level,
      app_level_requirements.description,
      -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) as required_count,
      app_level_requirements.priority,
      app_level_requirements.created_at,
      app_level_requirements.updated_at
    FROM
      agentic_db_status_public.app_level_requirements 
    FULL OUTER JOIN agentic_db_status_public.app_achievements ON (
      app_achievements.name = app_level_requirements.name
      AND app_achievements.actor_id = vrole_id
    )	
    JOIN agentic_db_status_public.app_levels ON (app_level_requirements.level = app_levels.name)
  WHERE
    app_level_requirements.level = vlevel
    AND -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) > 0
  ORDER BY priority ASC;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION agentic_db_status_public.steps_required TO authenticated;

