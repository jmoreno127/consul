section "Creating header and cards for the homepage" do

  def create_image_attachment(type)
    {
      cached_attachment: Rails.root.join("db/dev_seeds/images/#{type}_background.jpg"),
      title: "#{type}_background.jpg",
      user: User.first
    }
  end

  Widget::Card.create!(
    #title: 'CONSUL',
    title: 'PLAZA DIGITAL',
    #description: 'Free software for citizen participation.',
    description: 'Un espacio para que participes activamente en la construcción del Plan Nacional de Desarrollo 2018-2022 PACTO POR COLOMBIA',
#    link_text: 'More information',
    link_text: 'Quiero conocer más',
    link_url: 'help_path',
    #label: 'Welcome to',
    label: 'Bienvenido a',
    header: TRUE,
    image_attributes: create_image_attachment('header')
  )

  Widget::Card.create!(
    #title: 'How do debates work?',
    title: '¿Cómo funcionan los debates?',
    #description: 'Anyone can open threads on any subject, creating separate spaces where people can discuss the proposed topic. Debates are valued by everybody, to highlight the most important issues.',
    description: 'Todos los ciudadanos pueden abrir debates sobre cualquier tema. Se crean espacios independientes en donde todos pueden dar su opinión. Los debates pueden ser evaluados por todos y así resaltar los más importantes.',
    #link_text: 'More about debates',
    link_text: 'Más sobre debates',
    link_url: 'https://youtu.be/zU_0UN4VajY',
    label: 'Debates',
    header: FALSE,
    image_attributes: create_image_attachment('debate')
  )

  Widget::Card.create!(
    #title: 'How do citizen proposals work?',
    title: '¿Cómo funcionan las propuestas ciudadanas?',
    #description: "A space for everyone to create a citizens' proposal and seek supports. Proposals which reach to enough supports will be voted and so, together we can decide the issues that matter to us.",
    description: "Es un espacio para que todos los ciudadanos puedan proponer y buscar apoyo. Aquellas propuestas que alcancen el soporte necesario, serán sometidas a votación. De esta manera, se puede decidir sobre los temas que más importan.",
    #link_text: 'More about proposals',
    link_text: 'Más sobre propuestas',
    link_url: 'https://youtu.be/ZHqBpT4uCoM',
    #label: 'Citizen proposals',
    label: 'Propuestas ciudadanas',
    header: FALSE,
    image_attributes: create_image_attachment('proposal')
  )

  Widget::Card.create!(
    #title: 'How do participatory budgets work?',
    title: '¿Cómo funcionan los presupuestos colaborativos?',
    #description: " Participatory budgets allow citizens to propose and decide directly how to spend part of the budget, with monitoring and rigorous evaluation of proposals by the institution. Maximum effectiveness and control with satisfaction for everyone.",
    description: "Los presupuestos colaborativos permiten a los ciudadanos decidir directamente sobre como será gastado una parte del presupuesto, con un monitoreo y evaluación rigurosa de las propuestas por parte de la entidad estatal encargada. Máxima eficacia y control en la gestión de los recursos con altos niveles de satisfacción para todos.",
    #link_text: 'More about Participatory budgets',
    link_text: 'Más sobre presupuestos participativos',
    link_url: 'https://youtu.be/igQ8KGZdk9c',
    #label: 'Participatory budgets',
    label: 'Presupuestos participativos',
    header: FALSE,
    image_attributes: create_image_attachment('budget')
  )
end
