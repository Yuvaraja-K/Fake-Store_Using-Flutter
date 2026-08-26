DO $$
BEGIN
  IF to_regclass('public.artifact_migration_flow_test') IS NULL THEN
    RAISE EXCEPTION 'artifact_migration_flow_test was not created';
  END IF;
END
$$;
